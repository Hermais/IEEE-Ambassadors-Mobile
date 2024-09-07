import 'package:flutter/material.dart';
import 'package:weather_app/city_weather/city_weather.dart';
import 'package:weather_app/weather/padded_card.dart';
import 'package:weather_app/weather/theme.dart';
import 'package:weather_app/weather/weekly_weather_card.dart';

import 'padded_text.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moonImage =
        Image.network("https://cdn.weatherapi.com/weather/64x64/night/113.png");
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: PaddedCard(
                      color: AppColors.titleCardBG,
                      child: PaddedText(
                        "Today's Weather",
                        paddingValue: 0,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CityWeather(),
                          ),
                        );
                      },
                      child: PaddedCard(
                        paddingValue: 4.0,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: PaddedText(
                                  "Cairo",
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: PaddedText(
                                  "28.4°C",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    FittedBox(
                                      child: Row(
                                        children: [
                                          moonImage,
                                          PaddedText(
                                            "Clear",
                                            style:
                                                Theme.of(context).textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                    FittedBox(
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.keyboard_arrow_down,
                                            color: Colors.blue,
                                          ),
                                          PaddedText(
                                            "See More",
                                            style: Theme.of(context).textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  PaddedText(
                                    "00 AM",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  PaddedText(
                                    "26.8°C",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  moonImage,
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  PaddedText(
                                    "01 AM",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  PaddedText(
                                    "26.4°C",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  moonImage,
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  PaddedText(
                                    "02 AM",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  PaddedText(
                                    "26.1°C",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  moonImage,
                                ],
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  PaddedText(
                                    "03 AM",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  PaddedText(
                                    "25.8°C",
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  moonImage,
                                ],
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: PaddedCard(
                      color: AppColors.titleCardBG,
                      child: PaddedText(
                        "Weather This Week",
                        paddingValue: 0.0,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WeeklyWeatherCard(
                      dayText: "Monday",
                      dateText: "2024-09-06",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "29.8°C",
                    ),
                    WeeklyWeatherCard(
                      dayText: "Tuesday",
                      dateText: "2024-09-07",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "30.2°C",
                    ),
                    WeeklyWeatherCard(
                      dayText: "Wednesday",
                      dateText: "2024-09-08",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "30.5°C",
                    ),
                    WeeklyWeatherCard(
                      dayText: "Thursday",
                      dateText: "2024-09-09",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "30.7°C",
                    ),
                    WeeklyWeatherCard(
                      dayText: "Friday",
                      dateText: "2024-09-10",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "30.9°C",
                    ),
                    WeeklyWeatherCard(
                      dayText: "Saturday",
                      dateText: "2024-09-11",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "31.1°C",
                    ),
                    WeeklyWeatherCard(
                      dayText: "Sunday",
                      dateText: "2024-09-12",
                      icon: Icon(
                        Icons.wb_sunny,
                        color: Colors.orangeAccent,
                      ),
                      temperatureText: "31.3°C",
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
